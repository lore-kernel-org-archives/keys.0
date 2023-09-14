Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387292134C
	for <keys@linux.kernel.org>; Thu, 14 Sep 2023 20:10:40 +0000 (UTC)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6515d44b562so7875626d6.3
        for <keys@linux.kernel.org>; Thu, 14 Sep 2023 13:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694722240; x=1695327040; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PKOEmssI9GDb9S+pLr3UXiL3KW6y1kpRI+WPO7WQEW4=;
        b=a2R1g7pxxo6KvrLkdFJBZDTR5l1yPCCpi3E/i/LQkeYZFh2VCQQRkEMaFbUybefmhh
         I9XfjrW8850rmdifKAZH24D5/u4jMU05J0+TK+eOyEqUCFX+gOul9v6Kx26lwwvSMvkD
         BwbwxUM7q7jjFj9aT/+CD5RmiSu+QQxmS0hpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694722240; x=1695327040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKOEmssI9GDb9S+pLr3UXiL3KW6y1kpRI+WPO7WQEW4=;
        b=ECrwrhoc8iV0cRsJOY8EN+/5OdtZ46IycteWmmxgvwD/3Sb0/dQBfARfOUkDR072Y0
         tR5XSyzKfwxGlIp3PuY3BYCToJbMM5Az9BFjcqEnkIyWqdPhqP6sAeIhIPVbaKlO8XnO
         iXcz9qKfg9tsegkOoQ4FjxsyYlbjw4FRUmiJqMJGA7lxN84w1Oi6atXcfl+hdUS930Dg
         6hjdAjrtrlzYLe/B7q76coZ+EV82hll7fDMvKAFQr+Jht/8gqyJ84cd+ns+rHjz8a+GN
         t6mqKcvewBVf02Xt6ivfTFoLXpZLYmyflSFj9q4zuzPlOgbu2JOEBVTqRI2JX5mLlncO
         I6pw==
X-Gm-Message-State: AOJu0YyWLYAVWM+cT/2qpam6GXctPu0ZJwgyG/F1MtLBV3cJo5Nnfx34
	XU3felV9AfXPKZXDMoZG0Ji5hg==
X-Google-Smtp-Source: AGHT+IG0EPOGvz+TlvJbDfG474qr7TK8k+MzCIlsVnjPI7zU2jouQjlpl25EunvAFZkn+dSuzmrAbw==
X-Received: by 2002:a0c:e54a:0:b0:64a:3ab9:266f with SMTP id n10-20020a0ce54a000000b0064a3ab9266fmr6270367qvm.49.1694722240066;
        Thu, 14 Sep 2023 13:10:40 -0700 (PDT)
Received: from meerkat.local ([209.226.106.110])
        by smtp.gmail.com with ESMTPSA id t6-20020a05620a034600b0076ce061f44dsm705837qkm.25.2023.09.14.13.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 13:10:39 -0700 (PDT)
Date: Thu, 14 Sep 2023 16:10:31 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Chandan Babu R <chandan.babu@oracle.com>
Cc: keys@linux.kernel.org
Subject: Re: kernel.org UID added to my key
Message-ID: <20230914-ricotta-emperor-0b3f8c@meerkat>
References: <87h6nxwc08.fsf@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87h6nxwc08.fsf@debian-BULLSEYE-live-builder-AMD64>

On Thu, Sep 14, 2023 at 11:05:13AM +0530, Chandan Babu R wrote:
> Hi,
> 
> I have added chandanbabu@kernel.org UID to my key. The updated key is attached
> with this email.

Updated, thanks.

-K
