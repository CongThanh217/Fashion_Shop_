package com.fashion.servlet.user;

import com.fashion.annotation.HttpMethod;
import com.fashion.annotation.RequestObjectParam;
import com.fashion.constant.AppConstant;
import com.fashion.dto.base.Result;
import com.fashion.dto.comment.CreateCommentRequest;
import com.fashion.dto.user.UserResponse;
import com.fashion.exception.BusinessException;
import com.fashion.service.CommentService;
import lombok.Setter;

import javax.servlet.annotation.WebServlet;
import javax.validation.Valid;
import java.util.Map;

@WebServlet(name = "commentServlet", urlPatterns = "/comment/*")
@Setter
public class CommentServlet extends UserLayoutServlet {

    private CommentService commentService;

    @HttpMethod(value = "/add", method = HttpMethod.Method.POST)
    public Result<CreateCommentRequest> addComment(
            @RequestObjectParam @Valid CreateCommentRequest createCommentRequest,
            UserResponse userResponse
    ) {
        Result<CreateCommentRequest> result = this.commentService.addComment(createCommentRequest, userResponse);
        if (!result.isSuccess()) {
            throw new BusinessException(result.getMessage(), true);
        }
        result.setSuccessUrl("redirect:/shopping/detail?pCode=" + result.getData().getProductCode());
        return result;
    }
}
