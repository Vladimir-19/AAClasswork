// export const login = user => {
//     $.ajax({
//         method: 'POST',
//         url: '/api/session',
//         data: {user}
//     }) 
// };

// export const signup = user => {
//     $.ajax({
//         method: 'POST',
//         url: 'api/user'
//     })
// };

// export const logout = user => {
//     $.ajax({
//         method: "DELETE",
//         url: '/api/session'
//     })
// };

export const signupUser = user => (
    $.ajax({
        method: 'POST',
        url: '/api/user',
        data: {
            user
        }
    })
);

export const loginUser = user => (
    $.ajax({
        method: 'POST',
        url: '/api/session',
        data: user
        
    })
);

export const logoutUser = () => (
    $.ajax({
        method: 'DELETE',
        url: '/api/session'
    })
);

export const demoUser = () => {
    // return $.ajax({
    //     method: 'POST',
    //     url: '/api/session',
    //     data: {
    //         user: {
    //             email: 'pinteriors@catherine.com',
    //             password: 'welcome1'
    //         }
    //     }
    $.ajax({
        method: 'GET',
        url: `/api/users/${email}`,
        success,
        error
    });
}