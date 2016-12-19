package ${viperPackage}.contract;

import com.hannesdorfmann.mosby.mvp.<#if contentView??>lce.MvpLceView<#else>MvpView</#if>;
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;
import com.mateuszkoslacz.moviper.iface.interactor.ViperRxInteractor;
import com.mateuszkoslacz.moviper.iface.routing.ViperRxRouting;

public interface ${prefix}Contract {

    interface Presenter extends ViperPresenter<View> {

    }

    interface View extends Mvp<#if contentView??>LceView<${contentObject}><#else>View</#if> {
        <#if viewState>interface State {  
            void setState(int state);
        }</#if>  
    }

    interface Interactor extends ViperRxInteractor {

    }

    interface Routing extends ViperRxRouting {

    }
}
