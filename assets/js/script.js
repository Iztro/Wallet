$(document).ready(function() {
    $('#loginForm').submit(function(event) {
        event.preventDefault(); 
        var email = $('#email').val().trim(); 
        var password = $('#password').val().trim();

        if(email === '' || password === '') {
            alert('Por favor, completa todos los campos.');
        } else {

            console.log('Intento de inicio de sesión con:', email, password);

        }
    });
});

function login() {
  var username = document.getElementById('username').value;
  var password = document.getElementById('password').value;

  if (username === 'Our' && password === 'Wallet') {
    alert('Inicio de sesión exitoso');
    window.location.href = "OurMenu.html"; // Redirigir al menú principal
  } else {
    alert('Usuario o contraseña incorrectos');
  }
}


document.addEventListener('DOMContentLoaded', (event) => {
    document.querySelectorAll('.amount').forEach(function(node) {
      let amount = parseFloat(node.innerText.replace('$', '').replace(',', ''));
      node.innerText = '$' + amount.toLocaleString('en-US', {minimumFractionDigits: 2});
    });
  });

function confirmDelete() {
    // Primera confirmación
    if (confirm("¿Estás seguro de que quieres borrar este contacto?")) {
      // Segunda confirmación
      if (confirm("Esta acción es irreversible. ¿Realmente quieres borrar el contacto?")) {
        // Aquí iría el código para borrar el contacto
        alert("Contacto borrado.");
      } else {
        // Acción cancelada
        alert("La acción ha sido cancelada.");
      }
    } else {
      // Acción cancelada
      alert("La acción ha sido cancelada.");
    }
  }

document.addEventListener('DOMContentLoaded', (event) => {
    let total = 0;
    document.querySelectorAll('.amount').forEach(function(node) {
      let amount = parseFloat(node.innerText.replace('$', '').replace(',', ''));
      node.innerText = '$' + amount.toLocaleString('es-CL', {style: 'currency', currency: 'CLP'}).replace('CLP', '');
      total += amount;
    });
    // Actualizar el saldo total
    document.getElementById('saldoTotal').innerText = 'Saldo Total: ' + total.toLocaleString('es-CL', {style: 'currency', currency: 'CLP'}).replace('CLP', '');
  });

src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
crossorigin="anonymous"
