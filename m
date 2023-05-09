Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76EE14A80
	for <keys@linux.kernel.org>; Tue,  9 May 2023 18:49:07 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-64115e652eeso44815025b3a.0
        for <keys@linux.kernel.org>; Tue, 09 May 2023 11:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683658147; x=1686250147;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=99TODD3nkYwa38H/y2TCy9ymLebeuNNZNeRvaO11HAI=;
        b=Qr96UGZqYjDOOCOURS8/zP15G9ZmFZJV7F0N17CrruXT+dct+mHLMh708PKoqsmfFp
         VKdl+FtwFd6VTMcAiJLYE7pix7NSoSCIX4rPoq/DCrnSnohBK4isZB+MeBZJJjRM4+oM
         uCEAn37C/In051SBHUmO9iOaKlG2IqHMkVmfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683658147; x=1686250147;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=99TODD3nkYwa38H/y2TCy9ymLebeuNNZNeRvaO11HAI=;
        b=Kj/xeshatc2OdQD45olvqd61UvNosZNPwuSa/v+wA7fIQ1TWR8rHG1WPwu7GkkeUaU
         2xtbQB6d2bJBtBVzBJOY/KdnE6OoR4AzKDf2575aGEgzD1vu9IEjlSt2y58O2UnZfREx
         XtL3wCe4gK2WO6X3lB3oCE+lHPzN5wLVvj+vI2WSaHfUo9QcBWbB3AwPri/M8yGc+Yk0
         iYmQTBYxg0lRnY4IsKFbN6CCbtLn7Natr8s8lUXU+zARLR0P6I0NPUX2Wqy/ROpMwktG
         SD7ZVHqG1zvuM5Q7JIlTgLP7YgzZmeTCz0ZV1H3RNno6Y5XDe/MVUzKzyOd39VyhW3Fy
         KLoA==
X-Gm-Message-State: AC+VfDwUrF7Rbbki8UV/JYyJ2sFtpBqoNqKUxGToO/fr3lbZMY232lWI
	gr4Ov/SEmAO20BaTB2mGRP68hQ==
X-Google-Smtp-Source: ACHHUZ7ZzaK1qx+qARuykXJIIMS0FM+SPQv0H8Xchc+PWeI+iEEfJalYkNNPvKrCOYwMvqb8K7BQ0Q==
X-Received: by 2002:a17:902:ecd0:b0:1ac:76a6:a1f with SMTP id a16-20020a170902ecd000b001ac76a60a1fmr9971612plh.16.1683658147060;
        Tue, 09 May 2023 11:49:07 -0700 (PDT)
Received: from nitro.local ([64.141.80.140])
        by smtp.gmail.com with ESMTPSA id d23-20020a170902729700b001a216d44440sm1936888pll.200.2023.05.09.11.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:49:06 -0700 (PDT)
Date: Tue, 9 May 2023 14:49:04 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: keys@linux.kernel.org
Subject: Re: New key
Message-ID: <20230509-raisin-escort-obeys-9bb656@meerkat>
References: <37981d82-c7e7-3c06-ab21-47f2c78ef143@linaro.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <37981d82-c7e7-3c06-ab21-47f2c78ef143@linaro.org>

On Tue, May 09, 2023 at 11:51:24AM +0200, Konrad Dybcio wrote:
> Hi,
> 
> please import my key. This time it's got signatures on it :P

Added, thanks!

-K
