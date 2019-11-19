![](https://i.imgur.com/AFtgkhu.png)

1. The state class constructor is called (as it is for every class in Dart). 
The widget isn’t in the tree yet, so most state-specific initialization shouldn’t be done here.

2. The state object is associated with a BuildContext, or location in the tree. 
The widget is now considered mounted. You can check if a widget is mounted with `Widget.mounted`.

3. `State.initState` is called. This method is called exactly once.
This method should be used to initialize properties on the State object that depend 
on it’s associated stateful widget or `build context`.

4. `State.didChangeDependencies` is called. This method is special because it’s
called once immediately after initState, but can also be called later in the lifecycle (which I’ll cover in a minute).
This method is where you should do initialization that involves an `InheritedWidget`.

5. At this point, the state is considered "dirty", which is how Flutter tracks which widgets need to be rebuilt.
Any time a state object needs to be built, including the first time, it marks itself as "dirty".

6. The state object is fully initialized and the `State.build` method is called.

7. After a new build, the state is marked "clean". Up to this point, the lifecycle has been on a single track.
When the state is "clean", nothing is happening.
The state object is displayed as it’s intended, and it’s waiting for the framework to give it further directions. 
Several things can happen now.



   - `state.setState` is called from your code, which always marks the state as "dirty".
 
   - An ancestor widget may request that this location in the tree be rebuilt.
   - If the location is to be rebuilt with the same widget type and key, then the framework will call didUpdateWidget with the previous widget as an argument. This also marks the state as "dirty", and thus rebuilds the state.
If your widget depends on an `InheritedWidget`, and that inherited widget changes, then the framework calls `didChangeDependencies`. At this point, the widget will be rebuilt.

   - Finally, there is one action that is guaranteed to occur. The state object is going to be removed from the tree. Flutter will try to reuse state objects and it’s subtree in another location, but if can’t `State.disposed` is called. This method is where you should clean up any resources used by the widget, such as stopping active animations or closing streams. Once disposed is called, the widget can never build again. It is an error to call `setState` at this point.
