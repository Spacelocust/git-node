import express from 'express';
import cors from 'cors';

const app = express();

app.use(cors());
app.use(express.json());

// TODO add CSRF protection
app.get('/', (req, res) => {
    res.send('Hey, im a super powerfull 💪💪, blazingly fast 🚀🚀, node.js API 🔥🔥. 100% open source.');
});

const port = 5000;

app.listen(port, () => {
    console.log(`server running on port ${port}`);
});
