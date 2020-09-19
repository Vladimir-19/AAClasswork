// import { $CombinedState } from "redux"

export const fetchSearchGiphys = searchTerm => {
    $.ajax({
        method: 'GET',
        url: 'http://api.giphy.com/v1/gifs/search?q=${search+term}&api_key=${YOUR_GIPHY_API_KEY}&limit=2'
    })
};