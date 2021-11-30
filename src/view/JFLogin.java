package view;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;

public class JFLogin extends JFrame {

	private JPanel contentPane;
	private JTextField txtUsuario;
	private JPasswordField txtSenha;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					JFLogin frame = new JFLogin();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public JFLogin() {
		setTitle("Sis Locadora - Tela de Login");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("SISRodoviaria - Bem vindo");
		lblNewLabel.setFont(new Font("Arial", Font.BOLD | Font.ITALIC, 20));
		lblNewLabel.setBounds(10, 11, 393, 24);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Informe suas credenciais de acesso");
		lblNewLabel_1.setBounds(10, 65, 251, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("Usu\u00E1rio:");
		lblNewLabel_2.setBounds(10, 108, 67, 14);
		contentPane.add(lblNewLabel_2);
		
		txtUsuario = new JTextField();
		txtUsuario.setBounds(58, 105, 354, 20);
		contentPane.add(txtUsuario);
		txtUsuario.setColumns(10);
		
		JLabel lblNewLabel_3 = new JLabel("Senha:");
		lblNewLabel_3.setBounds(10, 152, 46, 14);
		contentPane.add(lblNewLabel_3);
		
		txtSenha = new JPasswordField();
		txtSenha.setBounds(58, 149, 354, 20);
		contentPane.add(txtSenha);
		
		JButton btnNewButton = new JButton("Acessar");
		btnNewButton.setBounds(29, 195, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("Cancelar");
		btnNewButton_1.setBounds(301, 195, 89, 23);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("Recuperar Senha");
		btnNewButton_2.setBounds(152, 195, 123, 23);
		contentPane.add(btnNewButton_2);
		
		JButton btnNewButton_3 = new JButton("Cadastrar - se");
		btnNewButton_3.setBounds(152, 227, 123, 23);
		contentPane.add(btnNewButton_3);
	}
}
