import swal from 'sweetalert';
  function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert-demo');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Loading",
        icon: "success",
        button: false,
      });
    });
  }
}
export { bindSweetAlertButtonDemo };
