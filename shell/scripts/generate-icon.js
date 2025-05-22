const fs = require('fs');

if (process.argv.length < 3) {
  console.error('Usage: node generate-icon.js <icon.png>');
  process.exit(1);
}

const file = process.argv[2];
const data = fs.readFileSync(file);
console.log(data.toString('base64'));
