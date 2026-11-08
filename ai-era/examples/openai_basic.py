"""
Basic OpenAI API example.
Setup: pip install openai python-dotenv
       Set OPENAI_API_KEY in .env or environment
Run: python openai_basic.py
"""
import os
from openai import OpenAI

def main():
    api_key = os.getenv("OPENAI_API_KEY")
    if not api_key:
        print("Set OPENAI_API_KEY environment variable first.")
        print("Get key: https://platform.openai.com/api-keys")
        return

    client = OpenAI(api_key=api_key)

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": "List 3 skills developers need in the AI era. Be brief."}
        ],
        max_tokens=150
    )

    print(response.choices[0].message.content)

if __name__ == "__main__":
    main()
