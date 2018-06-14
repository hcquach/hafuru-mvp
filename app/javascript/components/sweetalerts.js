import swal from 'sweetalert';

function deleteSweetAlertButton() {
  const swalButtonDelete = document.getElementById('delete-sweet');
  const deleteButton = document.getElementById('delete-hidden');
  if (swalButtonDelete) { // protect other pages
     swalButtonDelete.addEventListener('click', () => {
      swal("Are you sure?", {
      buttons: {
        cancel: "Cancel",
        delete: true
      },
    })
    .then((value) => {
      switch (value) {
        case "delete":
        deleteButton.click();
      }
    });
    });
  }
}



function categoryError() {
  const swalButtonMatch = document.getElementById('categoryerror');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'Category not selected',
      icon: "error",
      button: true,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}


function matchSweetAlertCheckButton() {
  const swalButtonMatch = document.getElementById('match-sweet');
  if (swalButtonMatch) { // protect other pages
    swalButtonMatch.addEventListener('click', () => {
      swal({
      title: 'Matching....',
      icon: "info",
      button: false,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
    });
  }
}

function collaborationItemSweetAlertButtonUpdateError() {
  const swalButtonMatch = document.getElementById('alertcollaborationitem');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'No new challenge has been added',
      icon: "error",
      timer: 1500,
      button: true,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}

function collaborationItemSweetAlertButtonUpdateSuccess() {
  const swalButtonMatch = document.getElementById('noticecollaborationitem');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'New challenge has been created',
      icon: "success",
      timer: 1200,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}

function gratitudeSweetAlertButtonUpdateError() {
  const swalButtonMatch = document.getElementById('alertupdategratitude');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'Title missing',
      icon: "error",
      timer: 1500,
      button: false,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}

function gratitudeSweetAlertButtonUpdateSuccess() {
  const swalButtonMatch = document.getElementById('noticeupdategratitude');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'Gratitude updated successfully',
      icon: "success",
      timer: 1000,
      button: false,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}

function gratitudeSweetAlertButtonError() {
  const swalButtonMatch = document.getElementById('alertgratitude');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'Title missing',
      icon: "error",
      timer: 1500,
      button: false,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}

function gratitudeSweetAlertButtonSuccess() {
  const swalButtonMatch = document.getElementById('noticegratitude');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'Gratitude added successfully',
      icon: "success",
      button: false,
      timer: 1000,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}

function matchSweetAlertButtonSuccess() {
  const swalButtonMatch = document.getElementById('noticematch');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'You have a match!',
      icon: "success",
      button: false,
      timer: 3000,
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}

function matchSweetAlertButton() {
  const swalButtonMatch = document.getElementById('alertmatch');
  if (swalButtonMatch) { // protect other pages
      swal({
      title: 'No match found',
      icon: "warning",
      closeOnClickOutside: false,
      width: 700,
      padding: 150,
      });
  }
}


function signInSweetAlertButton() {
  const swalButtonSignIn = document.getElementById('signed_in_alert');
  if (swalButtonSignIn) { // protect other pages
    swal({
      title: 'Signed in',
      icon: "success",
      button: false,
      timer: 1500,
      width: 700,
      padding: 150,

    });
  }
}

function userUpdatedSweetAlertButton() {
  const swalButtonSignIn = document.getElementById('userupdated');
  if (swalButtonSignIn) { // protect other pages
    swal({
      title: 'Updated',
      icon: "success",
      button: false,
      timer: 1500,
      width: 700,
      padding: 150,

    });
  }
}

function signOutSweetAlertButton() {
  const swalButtonSignOut = document.getElementById('signed_out_alert');
  if (swalButtonSignOut) { // protect other pages
    swal({
      title: 'Signed out',
      icon: "success",
      button: false,
      timer: 1500,
      width: 700,
      padding: 150,
    });
  }
}


export { deleteSweetAlertButton, userUpdatedSweetAlertButton, matchSweetAlertCheckButton, categoryError, matchSweetAlertButton, signInSweetAlertButton, signOutSweetAlertButton, matchSweetAlertButtonSuccess,gratitudeSweetAlertButtonError,gratitudeSweetAlertButtonSuccess,gratitudeSweetAlertButtonUpdateSuccess, gratitudeSweetAlertButtonUpdateError, collaborationItemSweetAlertButtonUpdateSuccess, collaborationItemSweetAlertButtonUpdateError, cancelSweetAlertButton };
