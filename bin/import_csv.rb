require 'tty-prompt'
require 'csv'
def import_csv
    prompt = TTY::Prompt.new
    file_path = prompt.ask('Import your data now. Please enter the link for your CSV file')
    # exec "open ." #this line only works on Mac
    # exec(pwd)
    system("open", "input")
    csv = CSV.open("input", "r")
end
# import_csv