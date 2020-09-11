const FollowToggle = require('./follow_toggle');

$(() => {
    $('button.follow-toggle').each( (i, bth) => new FollowToggle(bth, {}) );
});