projection implementation in class ZBP_C_Z2604TRAVEL unique;
strict ( 2 );
extensible;
use draft;
use side effects;
define behavior for ZC_Z2604TRAVEL alias ZcZ2604travel
extensible
use etag
{
  use create;
  use update;
  use delete;

  use action Edit;
  use action Activate;
  use action Discard;
  use action Resume;
  use action Prepare;

}