<aura:application extends="force:slds">
 <lightning:layout class="flexipageHeader slds-page-header uiBlock oneAnchorHeader">
        <lightning:layoutItem padding="horizontal-small">
         <lightning:icon iconName="custom:custom54" />
     </lightning:layoutItem>    
     <h1>
         Friends with Boats
     </h1>
        
    </lightning:layout>
    <lightning:layout>
     <lightning:layoutItem padding="around-small" size="6">
                 <lightning:card title="Find a Boat" class="slds-m-top_10px" >
                          <c:BoatSearchForm />
                 </lightning:card>
        </lightning:layoutItem>
    </lightning:layout>
     
    <lightning:layout>
        <lightning:card title="Matching Boats" class="slds-m-top_10px" >
            <c:BoatSearchResults />
        </lightning:card>
    </lightning:layout>
</aura:application>