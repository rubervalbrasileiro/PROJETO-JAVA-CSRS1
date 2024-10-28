
package dao;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DataUtil {

    // Converter de dd/MM/yyyy para yyyy-MM-dd (para salvar no banco)
    public static String formatarDataParaMySQL(String data) throws Exception {
        SimpleDateFormat formatoEntrada = new SimpleDateFormat("dd/MM/yyyy");
        Date dataFormatada = formatoEntrada.parse(data);

        SimpleDateFormat formatoSaida = new SimpleDateFormat("yyyy-MM-dd");
        return formatoSaida.format(dataFormatada);
    }

    // Converter de yyyy-MM-dd para dd/MM/yyyy (para exibir no formulário)
    public static String formatarDataParaFormulario(String data) throws Exception {
        SimpleDateFormat formatoEntrada = new SimpleDateFormat("yyyy-MM-dd");
        Date dataFormatada = formatoEntrada.parse(data);

        SimpleDateFormat formatoSaida = new SimpleDateFormat("dd/MM/yyyy");
        return formatoSaida.format(dataFormatada);
    }
}

