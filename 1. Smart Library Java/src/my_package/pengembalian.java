/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package my_package;

import com.mysql.jdbc.PreparedStatement;
import java.awt.event.WindowEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
/**
 *
 * @author LENOVO
 */
public class pengembalian extends javax.swing.JFrame {

    public Connection con;
    public Statement stat;
    public ResultSet res;
    public PreparedStatement pstmt;

    public void koneksi() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/library", "root", "");
            stat = con.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, e);
        }
    }
    
    private void kosongkan() {
        jTextField1.setText("");
        jTextField2.setText("");
        jTextField3.setText("");
        jTextField4.setText("yyyy-mm-dd");
        jTextField5.setText("");
    }
    
    public void close() {
        WindowEvent closeWindow = new WindowEvent(this, WindowEvent.WINDOW_CLOSING);
        java.awt.Toolkit.getDefaultToolkit().getSystemEventQueue().postEvent(closeWindow);
    }
    
    /**
     * Creates new form pengembalian
     */
    public pengembalian() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jTextField4 = new javax.swing.JTextField();
        jTextField5 = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jTextField1.setBackground(new java.awt.Color(237, 202, 151));
        jTextField1.setText("input student Id");
        jTextField1.setBorder(null);
        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });
        getContentPane().add(jTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 220, 430, 30));

        jTextField2.setBackground(new java.awt.Color(237, 202, 151));
        jTextField2.setText("input Book Id");
        jTextField2.setBorder(null);
        jTextField2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField2ActionPerformed(evt);
            }
        });
        getContentPane().add(jTextField2, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 280, 430, 30));

        jTextField3.setBackground(new java.awt.Color(237, 202, 151));
        jTextField3.setText("input quantity");
        jTextField3.setBorder(null);
        jTextField3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField3ActionPerformed(evt);
            }
        });
        getContentPane().add(jTextField3, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 350, 430, 30));

        jButton1.setText("OK");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 460, -1, -1));

        jButton2.setBackground(new java.awt.Color(237, 202, 151));
        jButton2.setText("Back");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(16, 14, -1, -1));

        jTextField4.setBackground(new java.awt.Color(237, 202, 151));
        jTextField4.setText("input day of returning yyyy-mm-dd");
        jTextField4.setBorder(null);
        jTextField4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField4ActionPerformed(evt);
            }
        });
        getContentPane().add(jTextField4, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 410, 430, 30));

        jTextField5.setBackground(new java.awt.Color(237, 202, 151));
        jTextField5.setText("input pinjam Id");
        jTextField5.setBorder(null);
        jTextField5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField5ActionPerformed(evt);
            }
        });
        getContentPane().add(jTextField5, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 170, 430, 30));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ui_component/RETURN (1).png"))); // NOI18N
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void jTextField2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField2ActionPerformed

    private void jTextField3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField3ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        koneksi();
        try {
            // Validate if ID Pinjam, ID Buku, and Quantity are not empty
            if (jTextField1.getText().isEmpty() || jTextField2.getText().isEmpty() || jTextField3.getText().isEmpty() || jTextField4.getText().isEmpty()|| jTextField5.getText().isEmpty()) {
                JOptionPane.showMessageDialog(null, "ID Pinjam, ID Buku, and Quantity are required.");
                return;
            }

            // Check if the quantity is a valid integer
            try {
                Integer.parseInt(jTextField3.getText());
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null, "Quantity must be a valid integer.");
                return;
            }

            // Check if the peminjaman exists and has "Pinjam" status
            String checkQuery = "SELECT * FROM pinjam WHERE pinjamId = ? AND bookId = ? AND quantity = ? AND status_pinjam = 'Pinjam' AND studentId = ? ";
            pstmt = (PreparedStatement) con.prepareStatement(checkQuery);
            pstmt.setString(1, jTextField5.getText());
            pstmt.setString(2, jTextField2.getText());
            pstmt.setString(3, jTextField3.getText());
            pstmt.setString(4, jTextField1.getText());
            
            res = pstmt.executeQuery();

            if (res.next()) {
                
                // Update the status in the pinjam table
                String updateQuery = "UPDATE pinjam SET status_pinjam = 'Selesai', TGLKEMBALI = ? WHERE pinjamId = ?";
                pstmt = (PreparedStatement) con.prepareStatement(updateQuery);
                pstmt.setString(1, jTextField4.getText());
                pstmt.setString(2, jTextField5.getText());
                pstmt.executeUpdate();


                // Update the quantity in the buku table
                int returnedQuantity = Integer.parseInt(jTextField3.getText());
                String updateBukuQuery = "UPDATE buku SET quantity = quantity + ? WHERE id_buku = ?";
                pstmt = (PreparedStatement) con.prepareStatement(updateBukuQuery);
                pstmt.setInt(1, returnedQuantity);
                pstmt.setString(2, jTextField2.getText());
                pstmt.executeUpdate();

                // Notify the user about the successful return
                JOptionPane.showMessageDialog(this, "Book returned successfully.");
                kosongkan();
            } else {
                JOptionPane.showMessageDialog(this, "Invalid ID Pinjam, ID Buku, Quantity, or status is not 'Pinjam'.");
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        } finally {
            // Close the PreparedStatement to avoid resource leaks
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        close();
        pinjam pinjam  = new pinjam();
        pinjam.setVisible(rootPaneCheckingEnabled);
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jTextField4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField4ActionPerformed

    private void jTextField5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField5ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField5ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(pengembalian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(pengembalian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(pengembalian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(pengembalian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new pengembalian().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    // End of variables declaration//GEN-END:variables
}
