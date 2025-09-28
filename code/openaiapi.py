import pandas as pd
from openai import OpenAI

# Set your OpenAI API key - Paste your key here
api_key = 'YOUR_API_HERE'
client = OpenAI(api_key=api_key)

# Function to simplify abstract and extract keywords
def process_abstract(abstract):
    # Simplify abstract - Edit this line to change the prompt.
    simplified_prompt = f"Simplify the following abstract:\n\n{abstract}. Limit to 50 words or below."
    simplified_response = client.chat.completions.create(
        model="gpt-4-turbo",
        messages=[
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": simplified_prompt}
        ]
    )
    simplified_abstract = simplified_response.choices[0].message.content.strip()
    
    # Extract keywords - Edit this line to change the prompt.
    keywords_prompt = f"Extract the first 5 key words from the following abstract:\n\n{abstract}. Please only give me the key words, separated by comma."
    keywords_response = client.chat.completions.create(
        model="gpt-4-turbo",
        messages=[
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": keywords_prompt}
        ]
    )
    keywords = keywords_response.choices[0].message.content.strip()
    
    return simplified_abstract, keywords

# Read the CSV file
df = pd.read_csv('2_api_for_abstract_review/abstracts.csv')

# Process each abstract
df['Simplified Abstract'] = ''
df['Keywords'] = ''
for index, row in df.iterrows():
    simplified_abstract, keywords = process_abstract(row['abstract'])
    df.at[index, 'Simplified Abstract'] = simplified_abstract
    df.at[index, 'Keywords'] = keywords

# Save the updated DataFrame to a new CSV
df.to_csv('2_api_for_abstract_review/abstracts_updated.csv', index=False)

print("Processing complete. The updated file is saved as 'abstracts_updated.csv'.")