import http from 'k6/http';

const url = '/todoitem';

export const options = {
    vus: 10,
    duration: '1s',
};

export default function () {
    const headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer '
    };
    const data = { title: 'test', exp: Math.floor(Date.now() / 1000) + Math.floor(Math.random() * 10000) };

    const res = http.put(url, JSON.stringify(data), { headers: headers });

    // console.log(JSON.parse(res.body).json.name);
}
