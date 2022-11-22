# Pin npm packages by running ./bin/importmap
pin "popper", to: 'popper.js', preload: true #must pin first
pin "application", preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true