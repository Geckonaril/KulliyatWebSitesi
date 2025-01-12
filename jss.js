// script.js
document.getElementById('loginForm').addEventListener('submit', function(event) {
  event.preventDefault();
  
  const username = document.getElementById('username').value;
  const surname = document.getElementById('usersurname').value;
  const password = document.getElementById('password').value;
  const errorMessage = document.getElementById('error-message');
  
  if (username === '' || surname==='' || password === '') {
      errorMessage.textContent = 'Kullanıcı adı ve şifre gereklidir!';
  } else if (username !== 'Enver' ||  surname !=='Bağcı' || password !== '12345') {
      errorMessage.innerHTML = 'Sen, sen değilsin!<br>'+'Geçersiz kullanıcı adı, soyadı veya şifre!';
  } else {
      errorMessage.textContent = 'öldük';
      alert('Başarıyla giriş yaptınız!');
      // Burada yönlendirme veya başka işlemler yapabilirsiniz
      document.getElementById('loginForm').submit();
  }
});
