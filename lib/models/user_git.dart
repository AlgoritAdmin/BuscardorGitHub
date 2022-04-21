// To parse this JSON data, do
//
//     final userGit = userGitFromMap(jsonString);

import 'dart:convert';

class UserGit {
  final List<String> months = [
    '',
    'Jan',
    'Febr',
    'March',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  UserGit({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.hireable,
    this.bio,
    this.twitterUsername,
    this.publicRepos = 0,
    this.publicGists = 0,
    this.followers = 0,
    this.following = 0,
    this.createdAt,
    this.updatedAt,
  });

  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;
  String? name;
  String? company;
  String? blog;
  dynamic? location;
  dynamic? email;
  dynamic? hireable;
  dynamic? bio;
  dynamic? twitterUsername;
  int publicRepos;
  int publicGists;
  int followers;
  int following;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory UserGit.fromJson(String str) => UserGit.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserGit.fromMap(Map<String, dynamic> json) => UserGit(
        login: json["login"] ?? '---',
        id: json["id"],
        nodeId: json["node_id"],
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: json["following_url"],
        gistsUrl: json["gists_url"],
        starredUrl: json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: json["events_url"],
        receivedEventsUrl: json["received_events_url"],
        type: json["type"],
        siteAdmin: json["site_admin"],
        name: json["name"] ?? json['login'],
        company: json["company"] ?? 'Not available',
        blog: json["blog"] == null || json["blog"] == ''
            ? 'Not available'
            : json["blog"],
        location: json["location"] ?? 'Not available',
        email: json["email"],
        hireable: json["hireable"],
        bio: json["bio"] ?? 'This profile has no bio',
        twitterUsername: json["twitter_username"] == null
            ? 'Not availabe'
            : 'https://twitter.com/${json['twitter_username']}',
        publicRepos: json["public_repos"] ?? 0,
        publicGists: json["public_gists"] ?? 0,
        followers: json["followers"] ?? 0,
        following: json["following"] ?? 0,
        createdAt: DateTime.parse(json["created_at"] ?? "0001-01-01T01:01:01Z"),
        updatedAt: DateTime.parse(json["updated_at"] ?? "2011-01-25T18:44:36Z"),
      );

  Map<String, dynamic> toMap() => {
        "login": login,
        "id": id,
        "node_id": nodeId,
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrl,
        "gists_url": gistsUrl,
        "starred_url": starredUrl,
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrl,
        "received_events_url": receivedEventsUrl,
        "type": type,
        "site_admin": siteAdmin,
        "name": name,
        "company": company,
        "blog": blog,
        "location": location,
        "email": email,
        "hireable": hireable,
        "bio": bio,
        "twitter_username": twitterUsername,
        "public_repos": publicRepos,
        "public_gists": publicGists,
        "followers": followers,
        "following": following,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
