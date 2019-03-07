require 'tty-prompt'
require 'csv'
def import_csv
    prompt = TTY::Prompt.new
    file_path = prompt.ask("Import your data now. Please append your csv file to 'spotify_data.csv' according to the data requirement in README.md.")
    # exec "open ." #this line only works on Mac
    csv = CSV.open("input", "r")
end
# import_csv