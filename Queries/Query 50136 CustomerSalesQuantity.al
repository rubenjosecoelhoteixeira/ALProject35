query 50136 "Customer_Sales_Quantity"
{
    QueryType = Normal;
    // Sets the results to only include the top forts the results in descending order
    TopNumberOfRows = 5;
    OrderBy = descending(Qty);

    elements
    {
        dataitem(C; Customer)
        {
            column(Customer_Number; "No.")
            {
            }
            column(Customer_Name; Name)
            {
            }
            dataitem(SL; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = c."No.";
                SqlJoinType = InnerJoin;

                column(Qty; Quantity)
                {
                }
            }
        }
    }
}