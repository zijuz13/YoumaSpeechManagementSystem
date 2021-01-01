package com.huajun123.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee extends Account {
    private String department;
    private String cardno;
    private String name;
    private boolean ifManager;
}
