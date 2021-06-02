class BinarySearchTree {

  private TreeNode root;
  private TreeNode current;

  public BinarySearchTree() {
    root=null;
  }

  TreeNode buildTree() {
    
    
    root=new TreeNode("Do you enjoy public speaking? (left arrow for yes; right arrow for no)");
    //level one
    root.setLeft(new TreeNode("Do you like to do group activities? (left arrow for yes; right arrow for no)"));
    root.setRight(new TreeNode("Do you like to interact with people on a one on one basis? (left arrow for yes; right arrow for no)"));
    //level two
    root.getLeft().setLeft(new TreeNode("Do you like to go to concerts? (left arrow for yes; right arrow for no)"));
    root.getRight().setRight(new TreeNode("Do you like to read? (left arrow for yes; right arrow for no)"));
    root.getLeft().setRight(new TreeNode("Do you like to go on hikes by youself? (left arrow for yes; right arrow for no)"));
    root.getRight().setLeft(new TreeNode("Do you like to facetime others? (left arrow for yes; right arrow for no)"));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("You are a severe extrovert! You love to hang out with friends and you're outgoing!"));
    root.getLeft().getLeft().setRight(new TreeNode("You are a medium extrovert! You have the tendencies of both an introvert and an extrovert!"));
    root.getLeft().getRight().setLeft(new TreeNode("You are an ambivert! You have the tendencies of both an introvert and an extrovert!"));
    root.getLeft().getRight().setRight(new TreeNode("You are a mild extrovert! "));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("You are a severe introvert! You like to have close relationships and you keep your thought to your self!"));
    root.getRight().getRight().setLeft(new TreeNode("You are a medium introvert! You have the tendencies of both an introvert and an extrovert!"));
    root.getRight().getLeft().setLeft(new TreeNode("You are a mild introvert! You have the tendencies of both an introvert and an extrovert!"));
    root.getRight().getLeft().setRight(new TreeNode("You are an ambivert! You like to have close relationships and you keep your thought to your self!"));
    
    
    
    /* root=new TreeNode("Personality Quiz! Get ready people!");
    //level one
    root.setLeft(new TreeNode("Do you enjoy public speaking? (left arrow for yes; right arrow for no)"));
    root.setRight(new TreeNode("Do you enjoy public speaking? (left arrow for yes; right arrow for no)"));
    //level two
    root.getLeft().setLeft(new TreeNode("Do you like to do group activities? (left arrow for yes; right arrow for no)"));
    root.getRight().setRight(new TreeNode("Do you like to interact with people on a one on one basis? (left arrow for yes; right arrow for no)"));
    root.getLeft().setRight(new TreeNode("Do you like to do group activities? (left arrow for yes; right arrow for no)"));
    root.getRight().setLeft(new TreeNode("Do you like to interact with people on a one on one basis? (left arrow for yes; right arrow for no)"));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("You are a severe extrovert! You love to hang out with friends and you're outgoing!"));
    root.getLeft().getLeft().setRight(new TreeNode("You are a medium extrovert! You have the tendencies of both an introvert and an extrovert!"));
    root.getLeft().getRight().setLeft(new TreeNode("You are an ambivert! You have the tendencies of both an introvert and an extrovert!"));
    root.getLeft().getRight().setRight(new TreeNode("You are a mild extrovert! "));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("You are a severe introvert! You like to have close relationships and you keep your thought to your self!"));
    root.getRight().getRight().setLeft(new TreeNode("You are a medium introvert! You have the tendencies of both an introvert and an extrovert!"));
    root.getRight().getLeft().setLeft(new TreeNode("You are a mild introvert! You have the tendencies of both an introvert and an extrovert!"));
    root.getRight().getLeft().setRight(new TreeNode("You are an ambivert! You like to have close relationships and you keep your thought to your self!"));
    */
    current=root;
    return current;
  }

  TreeNode returnTree() {
    current=root;
    return root;
  }

  private void inorder() {
    inorder(root);
  }

  public void inorder(TreeNode t) {
    if (t!=null) {
      inorder(t.getLeft());
      System.out.println(t.getValue());
      inorder(t.getRight());
    }
  }
}
