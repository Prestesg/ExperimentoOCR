const proxy = [
    {
      context: '/imagens',
      target: 'http://localhost:7888',
      secure: false
    }
  ];
  module.exports = proxy;