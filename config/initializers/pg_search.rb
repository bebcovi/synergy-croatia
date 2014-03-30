require "pg_search"

PgSearch.multisearch_options = {
  using: {
    tsearch: {prefix: true},
    trigram: {},
  },
  ignoring: :accents,
}
