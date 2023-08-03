# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Functional/Product Requirement

- There should be 100 list items, each should be set at 0 initially and user can increment its
  count.
- The count incremented by user should be persisted when he scrolls the list.

# Task:

- Solve the functional requirement.
- Review this file from Code Review perspective, list the issues and what changes should be made,
  perform the changes to the file.
- Think of it as a intern checked in this code and as a senior has to code review and fix the code
  from implementation perspective to make it correct and efficient.
- Send the fixed file back to the recruiter.

# Solution :
- Functional requirement related issue fixed.
- We have followed below steps.
   a. We have added AutomaticKeepAliveClientMixin on our _ListItemWidgetState class and implemented @override bool get wantKeepAlive => true function.
-  b. We have added super.build(context) on our _ListItemWidgetState class.
   c. We have added separate widget functions for text, button.
-  d. We have removed for-loop from  the class file and directly added the list length on listview builder.



