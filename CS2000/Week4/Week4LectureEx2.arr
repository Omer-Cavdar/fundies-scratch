use context dcic2024
include csv

dataset = load-table: Location,Subject,Date
  source: csv-table-url("https://raw.githubusercontent.com/NU-London/LCSCI4207-datasets/refs/heads/main/photos.csv", default-options)
end
filtered-dataset = filter-with(dataset, lam(o): o["Subject"] == "Forest" end)

ordered-filtered-dataset = order-by(filtered-dataset, "Date", true)

count(ordered-filtered-dataset, "Location")
freq-bar-chart(dataset,  "Location")