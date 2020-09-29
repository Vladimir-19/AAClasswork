import React from 'react';
import styles from './styles.scss';
import {Link} from 'react-router-dom';

const AuthBox = (props) => {
    const additionalClassName = props.additionalClassName ? props.additionalClassName : ''
    const addsessionSubmit = props.addsessionSubmit ? props.addsessionSubmit : ''
    const addLogin = props.addLogin ? props.addLogin : ""
    return (
        <div className={`${styles.loginFormContainer} ${additionalClassName}`} >
           
                <form
                    onSubmit={props.handleSubmit}
                    className="login-form-box login"
                >
                <h4 className="session-welcome">Welcome to Painteriors</h4>
                <h6 className="session-new-ideas">Find new ideas to try</h6>

                    <div >
                    {/* className={`login-form ${styles.red}`} */}
                        {props.formFields}

                        {/* <div className="session-submit"> */}
                        {/* <input   value={props.buttonMessage} /> */}
                        <button className={`${styles.sessionSubmit} ${addsessionSubmit}`} type="submit">Sumit</button>
                        {/* </div> */}

                         <p className={`${styles.sessionOrMessage} ${addsessionSubmit}`}>OR</p>

                    
                            <button
                            // onClick={(e) => { this.demoUser(e) }}
                            className={`${styles.sessionSubmitDemo} ${addsessionSubmit}`} type='submit'>
                                Demo User
                            </button>
                        
                    <p className="session-terms-message">By continuing, you agree to Painterior's Terms of Service</p>
                    <Link className={styles.linkTo} to={props.linkTo}>{props.goToLoginMessage} </Link>
                        {/* <a className="switch-session-form" onClick={() => { this.props.switchForm() }}>{renderMessage}</a> */}
                        {/* <div className="switch-button">{this.navLink()}</div> */}
                    </div>
                </form>
            
        </div>
    )
}

export default AuthBox;