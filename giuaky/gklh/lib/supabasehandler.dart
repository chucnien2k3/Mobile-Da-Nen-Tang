import 'package:supabase/supabase.dart';

class Supabasehandler {
  static String supaBaseUrl = "https://citqlsqpcccnukoavtxg.supabase.co";
  static String supaBaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNpdHFsc3FwY2NjbnVrb2F2dHhnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjgwNTE5NzksImV4cCI6MjA0MzYyNzk3OX0.-VmgpMpQx2_bIeT7kTotPv0msbf60G49U1Eyv8VK0i4";

  final client = SupabaseClient(supaBaseUrl, supaBaseKey);

  addData(String nameValue, String categoryValue, double priceValue) {
    var response = client
        .from('products')
        .insert({'name': nameValue, 'category': categoryValue, 'price': priceValue})
        .select();
    return response;
  }

  Future<List<dynamic>> readData() async {
    var response = await client
        .from('products')
        .select()
        .order('name', ascending: true);
    return response;
  }

  updateData(int id, String nameValue, String categoryValue, double priceValue) {
    var response = client
        .from('products')
        .update({ 'name': nameValue, 'category': categoryValue, 'price': priceValue})
        .eq('id', id)
        .select();
    return response;
  }

  deleteData(int id) {
    var response = client.from('products').delete().eq('id', id).select();
    return response;
  }

  signOut() {}
}
