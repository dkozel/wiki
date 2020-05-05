Originally by Manuel Peinado  
https://gist.github.com/ManuelPeinado/5424997

```java
package com.manuelpeinado;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

/**
 * A variation on Jake Wharton's BindingAdapter (https://gist.github.com/JakeWharton/5423616) which is slightly more convenient   
 * for adapters that only have one view type
 */
public abstract class SimpleBindingAdapter<ViewClass extends View> extends BaseAdapter {
    @SuppressWarnings("unchecked")
    @Override
    public final ViewClass getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = newView(parent);
        }
        bindView(position, (ViewClass)convertView);
        return (ViewClass)convertView;
    }

    /** Create a new instance of a view */
    public abstract ViewClass newView(ViewGroup parent);

    /** Bind the data for the specified {@code position} to the {@code view}. */
    public abstract void bindView(int position, ViewClass view);
}
```