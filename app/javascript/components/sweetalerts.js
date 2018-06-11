import swal from 'sweetalert';
  function addSweetAlertButton() {
  const swalButtonCreate = document.getElementById('create-sweet-alert');
  if (swalButtonCreate) { // protect other pages
    swalButtonCreate.addEventListener('click', () => {
      swal({
        title: 'Created',
        icon: "success",
        width: 700,
        padding: 150,
        });
      });
    }
  }

  function editSweetAlertButton() {
  const swalButtonEdit = document.getElementById('edit-sweet-alert');
  if (swalButtonEdit) { // protect other pages
    swalButtonEdit.addEventListener('click', () => {
      swal({
        title: 'Updated',
        icon: "success",
        width: 700,
        padding: 150,
        });
      });
    }
  }

export { addSweetAlertButton, editSweetAlertButton };
