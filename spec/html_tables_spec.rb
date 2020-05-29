require 'pry'

RSpec.describe 'index.html' do
  it 'contains a <table> with five rows' do
    table = parsed_html.search('table').first
    expect(table).to_not be_nil, "The main <table> tag is missing!"
    expect(html_file_contents).to include('</table>'), "Don't forget to include a closing </table>"


    children = table.children.select {|child| child.name == "tr"}
    expect(children.length).to be == 5, "Your <table> tag needs five <tr> tags, one for each row"

  end

  