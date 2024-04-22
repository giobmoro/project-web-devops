const sh = require('superheroes')
const chalk = require('chalk')
const moment = require('moment')
const eslint = require('eslint')
const time = new Date()
const parsedTime = moment(time).format('h:mm:ss')

console.log(chalk.red(sh.random()))

console.log(parsedTime)
