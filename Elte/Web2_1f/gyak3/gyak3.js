"use strict";

function $(s) {
  return document.querySelector(s);
}

var _list = [];

function getList() {
  return _list;
}

function addItem(taskName) {
  var task = {
    name: taskName,
    done: false
  };
  
  _list.push(task);
}

function markTask(i) {
  _list[i].done = !_list[i].done;
}

function clearCompletedItems() {
  _list = _list.filter(function (task) {
    return !task.done;
  });
}

function genItem(task) {
  if (task.done) {
    return `<li><s>${task.name}</s></li>`;
  }
  else {
    return `<li>${task.name}</li>`;
  }
}

function genList(tasks) {
  var list = "";
  
  for (var task of tasks) {
    list += genItem(task);
  }
  return list;
}

var add = $("#add");
var input = $("#input");
var list = $("#list");
var clear = $("#clear");

add.addEventListener("click", function () {
  if (input.value.length > 0) {
    addItem(input.value);

    list.innerHTML = genList(getList());
  }
}, false);

list.addEventListener("click", function (event) {
  var target = event.target;
  
  if (target.tagName === 'S') {
    target = target.parentNode;
  }
  
  var i;
  
  for (i = 0; i < this.children.length; ++i) {
    if (this.childNodes[i] === target) {
      break;
    }
  }
  
  markTask(i);
  
  list.innerHTML = genList(getList());
}, false);

clear.addEventListener("click", function () {
  clearCompletedItems();
  
  list.innerHTML = genList(getList());
});
