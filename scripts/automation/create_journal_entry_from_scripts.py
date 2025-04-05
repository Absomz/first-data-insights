from datetime import datetime
import os

# Paths relative to scripts/automation/
template_path = "../../professional-journal/professional_journal_template.md"
journal_folder = "../../professional-journal"
os.makedirs(journal_folder, exist_ok=True)

# Get today's date
today = datetime.now().strftime("%Y-%m-%d")
new_entry_filename = f"{today}.md"
new_entry_path = os.path.join(journal_folder, new_entry_filename)

# Read and personalize template
with open(template_path, "r", encoding="utf-8") as template_file:
    content = template_file.read()

content = content.replace("[Date: YYYY-MM-DD]", today)

# Create journal file
with open(new_entry_path, "w", encoding="utf-8") as new_entry_file:
    new_entry_file.write(content)

print(f"✅ Journal entry created: {new_entry_path}")
