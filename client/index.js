// Template.chatTemplate.messages = function() {
//     console.log($('#channel').val())
//     // Collection = new Meteor.Collection($('#channel').val());
// 	// return Collection.find();
// };
// 
// Template.chatTemplate.events = {
// 	'submit' : function(e, tmpl) {
// 		e.preventDefault();
// 		console.log("Clicked submit!");
// 
// 		var newMessage = {
// 			userName : tmpl.find("#user").value,
// 			message : tmpl.find("#chatInput").value,
// 			channel : tmpl.find("#channel").value
// 		};
// 
// 		// clear out the old message
// 		tmpl.find("#chatInput").value = "";
//         Collection = new Meteor.Collection($('#channel').val());
//         Collection.insert(newMessage);
// 	}
// };
