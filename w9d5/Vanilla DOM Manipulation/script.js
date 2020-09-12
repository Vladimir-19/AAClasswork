document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const handleFavoriteSubmit = (e) => {

    event.preventDefault();

    const strToAddEl = document.querySelector(".favorite-input");
    const strToAdd = strToAddEl.value;
    strToAddEl.value = "";

    
    const li = document.createElement("li");
    const ul = document.getElementById("sf-places"); 
    // we wanto to add new line to ul with an id="sf-places"


    li.textContent = strToAdd;
    ul.appendChild(li);
  };
 const listSubmitButton = document.querySelector(".favorite-submit");
 listSubmitButton.addEventListener("click", handleFavoriteSubmit);


 
  // adding new photos

  // --- your code here!
  const showPhotoForm = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === "photo-form-container") {
      photoFormDiv.className = "photo-form-container hidden";
    } else {
      photoFormDiv.className = "photo-form-container";
    }
  };

  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);


  const handlePhotoSubmit = (e) => {

    event.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";


    const li = document.createElement("li");
    const img = document.createElement("img");
    // we wanto to add new line to ul with an id="sf-places"

    img.src = photoUrl;
    li.appendChild(img);
  };
  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);


});
