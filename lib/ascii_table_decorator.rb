class AsciiTableDecorator
  def format(cols, last_row)
    border = header(cols) + "\n"

    row = border + body(cols) + "\n"
    row += border if last_row

    row
  end

  private

  def header(cols)
    cols.reduce('') do |memo, col|
      memo += header_cell(col == cols.last)
    end
  end

  def body(cols)
    cols.reduce('') do |memo, col|
      memo += centred_cell(col, col == cols.last)
    end
  end

  def header_cell(last)
    cell = '+' + '-' * col_length
    cell += '+' if last

    cell
  end

  def centred_cell(col, last)
    cell = '|' + col.to_s.center(col_length)
    cell += '|' if last

    cell
  end

  def col_length
    5
  end
end
