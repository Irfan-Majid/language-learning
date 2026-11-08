"""LangChain hello - CampusX Generative AI Series Video 1-3
Setup: pip install langchain langchain-openai python-dotenv
       Set OPENAI_API_KEY in .env
Run: python langchain_hello.py
"""
import os
from langchain_openai import ChatOpenAI
from langchain_core.prompts import ChatPromptTemplate

def main():
    if not os.getenv("OPENAI_API_KEY"):
        print("Set OPENAI_API_KEY in .env or environment")
        return

    llm = ChatOpenAI(model="gpt-4o-mini")
    prompt = ChatPromptTemplate.from_messages([
        ("system", "You are a helpful AI tutor."),
        ("user", "{question}")
    ])
    chain = prompt | llm

    response = chain.invoke({
        "question": "Explain RAG in one sentence for a beginner."
    })
    print(response.content)

if __name__ == "__main__":
    main()
