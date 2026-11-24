managed implementation in class ZBP_R_Z2604TRAVEL unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_Z2604TRAVEL alias ZrZ2604travel
persistent table ZZ2604TRAVEL
extensible
draft table ZZ2604TRAVEL_D
etag master LocalLastChangedAt
lock master total etag LastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   TravelID;

  field ( readonly )
   LocalCreatedBy,
   LocalCreatedAt,
   LocalLastChangedBy,
   LocalLastChangedAt,
   LastChangedAt;

  field ( readonly : update )
   TravelID;


  create;
  update;
  delete;

  determination setInitialStatus on save { create; }

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZZ2604TRAVEL corresponding extensible
  {
    TravelID = TRAVEL_ID;
    Description = DESCRIPTION;
    StartDate = START_DATE;
    EndDate = END_DATE;
    Status = STATUS;
    LocalCreatedBy = LOCAL_CREATED_BY;
    LocalCreatedAt = LOCAL_CREATED_AT;
    LocalLastChangedBy = LOCAL_LAST_CHANGED_BY;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
    LastChangedAt = LAST_CHANGED_AT;
  }

}