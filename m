Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3A78F57
	for <keys@linux.kernel.org>; Thu, 31 Aug 2023 20:07:49 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-76ef8b91a4bso80823685a.2
        for <keys@linux.kernel.org>; Thu, 31 Aug 2023 13:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1693512469; x=1694117269; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=G1IHORdKdbV9mWzNMWRdfjLaZCXPRWNCLVXUEhDatgs=;
        b=TG6csaDTa6wRbnoUJvVnwefp/yxMbYv42q+zUlYfaZEDxjQTMlkm/+t7GYNC5gGIe/
         QlGGwacmM/gVn/0GQVoI8k8DItsvb+LGh2sMRKTnKxCJbRXk8qx4s5Dkeg8S/3i6HXHu
         KK8I9BR+UnqP0oF8U2rg9iWwn6zs8elAmp4to=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693512469; x=1694117269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1IHORdKdbV9mWzNMWRdfjLaZCXPRWNCLVXUEhDatgs=;
        b=Ywk5PAznEAkuI6XGNI9VAwLFT5EuURg4JvGv5SL9Y2N0U348gS3L5vQ1gAWtmwaMtk
         JfOD65SFWx7dtpA31iR7hLS4VmURpP+Ay1UmKQdrfUwXK/j+N/7l6sbrFhr7xOLwiLYk
         gfeOflhaB+UUj1eal+2ys1tok+4AMfcCADnhdvlnWCMi1Zu3n4O6QNFui5qJqOaN9G/k
         YPUIVf99WBeXQ4QqVpWQUiXswnu8r+Vi9AwYQGfr2jv1WYaYHusjes1vk7R9DLgBjBX5
         bObP6GwsS7onOnW9mnPPC1YM4IWOozEx6qIIRZvTaKTCecvokfPkgEhF817jFGfV7kjh
         MhPw==
X-Gm-Message-State: AOJu0YyIuUOMkMtrPodacMfimcNuLMVghZa7Yvl5e7NN90KvXHxJuoWR
	6E/3AdQdcWRJiXN/iunuR1HZSRASw9m4yk9fsYs=
X-Google-Smtp-Source: AGHT+IEmYcbyQxap6Y04f9zmIhOBlynkrRM5ujDu8az9ndRwP8gZmQuQA9PXBht8cWgdNzddnD452A==
X-Received: by 2002:a05:620a:22e8:b0:76f:2f7b:cf61 with SMTP id p8-20020a05620a22e800b0076f2f7bcf61mr315921qki.61.1693512468810;
        Thu, 31 Aug 2023 13:07:48 -0700 (PDT)
Received: from nitro.local ([204.48.79.90])
        by smtp.gmail.com with ESMTPSA id u1-20020a05620a120100b007675c4b530fsm861718qkj.28.2023.08.31.13.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Aug 2023 13:07:48 -0700 (PDT)
Date: Thu, 31 Aug 2023 16:07:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: keys@linux.kernel.org
Subject: Re: srinivas.kandagatla@linaro.org
Message-ID: <20230831-bone-yamaha-jugs-490652@meerkat>
References: <703bd322-e37c-47da-bc81-924a9d3038ea@linaro.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <703bd322-e37c-47da-bc81-924a9d3038ea@linaro.org>

On Wed, Aug 23, 2023 at 08:46:23AM +0100, Srinivas Kandagatla wrote:
> Can you please import my key for srinivas.kandagatla@linaro.org and
> srini@kernel.org

Key updated, thanks.

-K
