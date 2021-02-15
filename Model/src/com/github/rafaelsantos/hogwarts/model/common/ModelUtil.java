package com.github.rafaelsantos.hogwarts.model.common;

import java.math.BigDecimal;

import oracle.jbo.server.DBTransaction;
import oracle.jbo.server.SequenceImpl;

import java.sql.Timestamp;
import java.util.Date;

public class ModelUtil {
    
    public static BigDecimal getSequence(DBTransaction transaction) {
        SequenceImpl sequence = new SequenceImpl("ID_SEQ", transaction);
        return new BigDecimal(sequence.getSequenceNumber().toString());
    }
    
    public static Timestamp getCurrentDate() {
        return new Timestamp(new Date().getTime());
    }
}
