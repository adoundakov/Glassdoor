export const signUp = (user, success, error) => {
  $.ajax({
    url: '/api/users',
    type: 'post',
    data: {user},
    success,
    error
  });
};

export const logIn = (user, success, error) => {
  $.ajax({
    url: '/api/session',
    type: 'post',
    data: {user},
    success,
    error
  });
};

export const logOut = (success, error) => {
  $.ajax({
    url: '/api/session',
    type: 'delete',
    success,
    error
  });
};
