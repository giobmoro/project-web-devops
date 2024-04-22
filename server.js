const Express = require('express')
const app = new Express()
const path = require('path')

app.listen(3000, () => {
  console.log('Server running on port 3000')
})

app.get('/', (req, res) => {
  res.send(app.use(Express.static(path.join(__dirname, '/public'))))
})
