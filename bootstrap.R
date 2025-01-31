desc_file <- "DESCRIPTION"
lines <- readLines(desc_file)
modified_lines <- lines |>
  gsub(
    "0.0.9000",
    "1.0.0",
    x = _
  ) |>
  gsub(
    "~~DATE~~",
    Sys.Date(),
    x = _
  )

writeLines(modified_lines, desc_file)
