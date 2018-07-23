services = [
  {
    # TODO read names from environment
    name = "mysql-clustername-read"
    port = 3306
    checks = [
      {
        args = ["/usr/local/bin/mysql-check", "alive"]
        interval = "2s"
        timeout = "2s"
      }
    ]
  },
  {
    # TODO read names from environment
    name = "mysql-clustername-write"
    port = 3306
    checks = [
      {
        args = ["/usr/local/bin/mysql-check", "writable"]
        interval = "2s"
        timeout = "2s"
      }
    ]
  }
]
