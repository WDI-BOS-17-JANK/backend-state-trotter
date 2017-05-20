'use strict';

const mongoose = require('mongoose');

const itemSchema = new mongoose.Schema({
  // item id created automatically
  title: {
    type: String,
    required: true,
  },
  state: {
    type: String,
    required: true,
  },
  // isPublic: {
  //   type: String,
  //   required: true,
  // },
  status: { // For complete/incomplete
    type: String,
    required: true,
  },
  description: {
    type: String,
    // required: true,
  },
  due_date: {
    // type: Date,
    type: String
    // required: true,
  },
  // gps: {
  //   type: _____,
  //   required: true,
  // },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
  toJSON: {
    virtuals: true,
    transform: function (doc, ret, options) {
      let userId = (options.user && options.user._id) || false;
      ret.editable = userId && userId.equals(doc._owner);
      return ret;
    },
  },
}); // if there's a user with an ID, then use that information, make sure that userID equals to userID of whoever that owns it, and then return what is being created.

// this function gets the length of the text that it's called on. E.g. item.title.length
// itemSchema.virtual('length').get(function length() {
//   return this.text.length;
// });

const Item = mongoose.model('Item', itemSchema);

module.exports = Item;
