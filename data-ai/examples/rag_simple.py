"""
Simple RAG pipeline with LangChain + Chroma (local vector store).
Setup: pip install langchain langchain-openai langchain-community chromadb pypdf python-dotenv
       Set OPENAI_API_KEY in environment
Run: python rag_simple.py
"""
import os
from langchain_openai import ChatOpenAI, OpenAIEmbeddings
from langchain_community.vectorstores import Chroma
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from langchain_core.runnables import RunnablePassthrough

SAMPLE_TEXT = """
Our company refund policy allows returns within 30 days of purchase.
Items must be unused and in original packaging.
Digital products are non-refundable after download.
Contact support@example.com for refund requests.
"""

def build_rag():
    splitter = RecursiveCharacterTextSplitter(chunk_size=200, chunk_overlap=50)
    chunks = splitter.split_text(SAMPLE_TEXT)

    embeddings = OpenAIEmbeddings(api_key=os.getenv("OPENAI_API_KEY"))
    vectorstore = Chroma.from_texts(chunks, embeddings)
    retriever = vectorstore.as_retriever(search_kwargs={"k": 2})

    llm = ChatOpenAI(model="gpt-4o-mini", api_key=os.getenv("OPENAI_API_KEY"))

    prompt = ChatPromptTemplate.from_template("""
Answer using ONLY the context below. If unsure, say "I don't know."

Context: {context}

Question: {question}
""")

    def format_docs(docs):
        return "\n\n".join(doc.page_content for doc in docs)

    chain = (
        {"context": retriever | format_docs, "question": RunnablePassthrough()}
        | prompt
        | llm
        | StrOutputParser()
    )
    return chain

if __name__ == "__main__":
    if not os.getenv("OPENAI_API_KEY"):
        print("Set OPENAI_API_KEY first.")
        exit(1)

    rag = build_rag()
    question = "What is the refund policy for digital products?"
    print(f"Q: {question}")
    print(f"A: {rag.invoke(question)}")
