package edu.brown.cs.networking;

import java.util.Collection;
import java.util.List;

import com.google.gson.JsonObject;
import com.google.gson.annotations.SerializedName;


class GroupView implements Group {

  @SerializedName("group")
  private Group inner;


  public GroupView(Group g) {
    this.inner = g;
  }


  @Override
  public boolean add(User u) {
    throw new UnsupportedOperationException("Can't add to view of group");
  }


  @Override
  public boolean remove(User u) {
    throw new UnsupportedOperationException("Can't remove from view of group");
  }


  @Override
  public boolean handleMessage(User u, JsonObject message) {
    throw new UnsupportedOperationException(
        "Can't send message to view of group");
  }


  @Override
  public String identifier() {
    return inner.identifier();
  }


  @Override
  public int maxSize() {
    return inner.maxSize();
  }


  @Override
  public int currentSize() {
    return inner.currentSize();
  }


  @Override
  public boolean isFull() {
    return inner.isFull();
  }


  @Override
  public boolean isEmpty() {
    return inner.isEmpty();
  }


  @Override
  public String groupName() {
    return inner.groupName();
  }


  @Override
  public boolean hasUser(String uuid) {
    return inner.hasUser(uuid);
  }


  @Override
  public boolean hasUser(User u) {
    return inner.hasUser(u);
  }


  @Override
  public void clear() {
    throw new UnsupportedOperationException();
  }


  @Override
  public Collection<User> connectedUsers() {
    return inner.connectedUsers();
  }


  @Override
  public void logMessage(Message m) {
    throw new UnsupportedOperationException(
        "Can't log message for a GroupView");
  }


  @Override
  public List<Message> getMessageLog() {
    return inner.getMessageLog();
  }


}
