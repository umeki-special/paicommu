const express = require('express');
const app = express();
const port = 3000;

// ルートハンドラ（"/"にアクセスした際に"Hello, World!"を表示する）
app.get('/', (req, res) => {
  res.send('Hello, World!');
});

// サーバーの起動
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
