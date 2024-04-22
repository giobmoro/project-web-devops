const Express = require('express')
const app = new Express()
const path = require('path')

app.use(Express.static(path.join(__dirname, '/public')))
app.listen(3000, () => {
  console.log('Server running on 3000')
})
