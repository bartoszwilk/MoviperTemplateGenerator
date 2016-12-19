package ${viperPackage}.view.fragment;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if viewState>
import com.hannesdorfmann.mosby.mvp.viewstate.lce.LceViewState;
import com.hannesdorfmann.mosby.mvp.viewstate.lce.data.RetainingLceViewState;</#if>
import ${appPackage}.R;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
import com.mateuszkoslacz.moviper.base.view.fragment.ViperLce<#if viewState>ViewState</#if>Fragment;

public class ${prefix}Fragment
        extends ViperLce<#if viewState>ViewState</#if>Fragment
        <$contentView,
                $contentObject,
                ${prefix}Contract.View, 
                ${prefix}Contract.Presenter>
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_${classToResource(className)}, container, false);
    }

    @NonNull
    @Override
    public ${prefix}Contract.Presenter createPresenter() {
        return new ${prefix}Presenter();
    }

    @Override
    protected String getErrorMessage(Throwable e, boolean pullToRefresh) {
        return e.getLocalizedMessage();
    }

    @Override
    public void setData(${contentObject} data) {

    }

    @Override
    public void loadData(boolean pullToRefresh) {

    }

    <#if viewState> 
    @Override
    public ${contentObject} getData() {
        return null;
    }

    @NonNull   
    @Override   
    public LceViewState<${contentObject}, ${prefix}Contract.View> createViewState() {   
        return new RetainingLceViewState<>(); 
    }   
   
    @Override   
    public void onNewViewStateInstance() {   
           
    }</#if>  
}
