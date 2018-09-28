'use strict';

function open_solution(id) {
  document.getElementById(id).style.display = 'block';
  document.body.style.overflow = 'hidden';
}

function close_solution(id) {
  document.getElementById(id).style.display = 'none';
  document.body.style.overflow = 'initial';
}