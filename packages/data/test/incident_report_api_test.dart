import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for IncidentReportApi
void main() {
  final instance = StrategiMobileApi().getIncidentReportApi();

  group(IncidentReportApi, () {
    // Get a paginated list of incident report with optional filtering
    //
    //Future<IncidentReportGet200Response> incidentReportGet({ int page, int limit, int status, String moda, Date startDate, Date endDate, String dateField, String category }) async
    test('test incidentReportGet', () async {
      // TODO
    });

    // Approve an incident report
    //
    //Future<IncidentReportIdApprovePost200Response> incidentReportIdApprovePost(String id, IncidentReportIdApprovePostRequest incidentReportIdApprovePostRequest) async
    test('test incidentReportIdApprovePost', () async {
      // TODO
    });

    // Delete an existing incident report
    //
    //Future<IncidentReportIdDelete200Response> incidentReportIdDelete(String id) async
    test('test incidentReportIdDelete', () async {
      // TODO
    });

    // Get detailed information about a specific incident report
    //
    //Future<IncidentReportIdGet200Response> incidentReportIdGet(String id) async
    test('test incidentReportIdGet', () async {
      // TODO
    });

    // Update an existing incident report
    //
    //Future<IncidentReportIdPut200Response> incidentReportIdPut(String id, IncidentReportIdPutRequest incidentReportIdPutRequest) async
    test('test incidentReportIdPut', () async {
      // TODO
    });

    // Reject an incident report
    //
    //Future<IncidentReportIdRejectPost200Response> incidentReportIdRejectPost(String id, IncidentReportIdRejectPostRequest incidentReportIdRejectPostRequest) async
    test('test incidentReportIdRejectPost', () async {
      // TODO
    });

    // Create a new incident report
    //
    //Future incidentReportPost(IncidentReportPostRequest incidentReportPostRequest) async
    test('test incidentReportPost', () async {
      // TODO
    });

  });
}
