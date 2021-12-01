package view;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import java.awt.Font;
import javax.swing.JLabel;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JScrollBar;

public class JFCadastrarrodoviaria extends JFrame {

	private JPanel contentPane;
	private JTextField txtCadastroDaRodoviria;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField txtEs;
	private JTextField textField_4;
	private JTextField textField_5;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					JFCadastrarrodoviaria frame = new JFCadastrarrodoviaria();
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
	public JFCadastrarrodoviaria() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 481, 471);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		txtCadastroDaRodoviria = new JTextField();
		txtCadastroDaRodoviria.setBounds(5, 5, 455, 27);
		txtCadastroDaRodoviria.setFont(new Font("Tahoma", Font.BOLD, 17));
		txtCadastroDaRodoviria.setText("CADASTRO DO PASSAGEIRO");
		contentPane.add(txtCadastroDaRodoviria);
		txtCadastroDaRodoviria.setColumns(10);
		
		textField = new JTextField();
		textField.setBounds(20, 79, 428, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setBounds(20, 131, 428, 20);
		contentPane.add(textField_1);
		textField_1.setColumns(10);
		
		textField_2 = new JTextField();
		textField_2.setBounds(20, 187, 428, 17);
		contentPane.add(textField_2);
		textField_2.setColumns(10);
		
		txtEs = new JTextField();
		txtEs.setBounds(20, 240, 428, 20);
		contentPane.add(txtEs);
		txtEs.setColumns(10);
		
		textField_4 = new JTextField();
		textField_4.setBounds(20, 296, 428, 20);
		contentPane.add(textField_4);
		textField_4.setColumns(10);
		
		textField_5 = new JTextField();
		textField_5.setBounds(22, 352, 426, 20);
		contentPane.add(textField_5);
		textField_5.setColumns(10);
		
		lblNewLabel = new JLabel("Nome:");
		lblNewLabel.setBounds(20, 54, 46, 14);
		contentPane.add(lblNewLabel);
		
		txtCadastrar = new JButton("Cadastrar");
		txtCadastrar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		txtCadastrar.setBounds(20, 398, 89, 23);
		contentPane.add(txtCadastrar);
		
		txtCancelar = new JButton("Cancelar");
		txtCancelar.setBounds(156, 398, 89, 23);
		contentPane.add(txtCancelar);
		
		Limpar = new JButton("Limpar");
		Limpar.setBounds(305, 398, 89, 23);
		contentPane.add(Limpar);
		
		JLabel txtCPF = new JLabel("CPF:");
		txtCPF.setBounds(20, 110, 46, 14);
		contentPane.add(txtCPF);
		
		JLabel txtRG = new JLabel("RG:");
		txtRG.setBounds(20, 162, 46, 14);
		contentPane.add(txtRG);
		
		JLabel txtEndereço = new JLabel("Endere\u00E7o:");
		txtEndereço.setBounds(20, 215, 75, 14);
		contentPane.add(txtEndereço);
		
		JLabel txtEmail = new JLabel("Email:");
		txtEmail.setBounds(20, 271, 46, 14);
		contentPane.add(txtEmail);
		
		JLabel txtCelular = new JLabel("Celular:");
		txtCelular.setBounds(20, 327, 46, 14);
		contentPane.add(txtCelular);
		
		JButton btnNewButton = new JButton("Cadastrar");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				rodoviaria f = new rodoviaria();
				rodoviariaDAO dao = new rodoviariaDAO();
				f.setNome(textNome.getText());
				f.set(textCPF.getText());
				f.setCpf(texRG.getText());
				f.setEndereo(textEndereço.getText());
				f.setEmail(textCelular.getText());				
				
				dao.create(f);
				
			}
		});

			}
		});
		btnNewButton.setBounds(19, 383, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("Limpar");
		btnNewButton_1.setBounds(187, 383, 89, 23);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("Cancelar");
		btnNewButton_2.setBounds(343, 383, 89, 23);
		contentPane.add(btnNewButton_2);

		
		JLabel txtNome = new JLabel("Nome");
		txtNome.setBounds(20, 54, 147, 14);
		contentPane.add(txtNome);
		
		ButtonGroup imagem = new ButtonGroup();
		private JLabel lblNewLabel;
		private JButton txtCadastrar;
		private JButton txtCancelar;
		private JButton Limpar;
	}

	}
