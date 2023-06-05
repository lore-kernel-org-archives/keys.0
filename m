Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC2824134
	for <keys@linux.kernel.org>; Mon,  5 Jun 2023 21:23:50 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6260a9ef126so45701176d6.2
        for <keys@linux.kernel.org>; Mon, 05 Jun 2023 14:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686000229; x=1688592229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8aeqipxSipfQZBMBAGz4TYO9ximNd+bZXq45Y0oRDYM=;
        b=I2/o4kCHvldsmJM+FTyTioPRbx4yr/TnHjD5zB8fbs8748BzU988sdGCmayv4FzyZp
         h8ZmBWYKJvZYNAmIM3pgsTgp0JEBMziGjdUKWqwyBjTZywqp2x4GSUnXZ+6OLpq5tqdt
         E2xF7N1+Dj3gIXDSHg3KadptN8Ajdjx4H01ok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686000229; x=1688592229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8aeqipxSipfQZBMBAGz4TYO9ximNd+bZXq45Y0oRDYM=;
        b=Sq4VWAxj3bzP0pOhpWHWn6FQdJ0K86rrELv1sJGdPxzAa0Mu/rmZVp7jWysGL4XHWd
         nj5Z2Yz+Qct66IFHQrJyq1wtSXBqOaheFL61IPtLJxchjbSRkawKSGHl1gcSmVfN9vFr
         NkvjEvE9k8Kf6hHsB/eri30mxjjZAXyWbXVVd47KK6vqy2fVrubJUVubBKYxXv/qvfL2
         TA6s4u1/pSR3c/AkEgmdx+WxRtmY24oR6u/RzVnMBJnnaNU0Y0tdGz15Ko7S2032CzKd
         roOOgi9aRDyAcyWaXcQ3L39lXkqOCPObs7kDkV/qGCplfm5YLUrtpbxPdwSWOJPLVkkx
         c1gw==
X-Gm-Message-State: AC+VfDxDIXjTye36W6C6CtzqrZ4y0SoYNgCJaO62R/IGcmbeISUPwg96
	XP+riKiRoqBbjEp+F56gzpGLW7IUG/wmeSrOpPk=
X-Google-Smtp-Source: ACHHUZ5amIluvUjEU/5TEBsrhTgUanAbZ5jJ4NppOo8KPDQFtTj4DIxHz0EepOhOvUPyDUa8jqeCnQ==
X-Received: by 2002:ad4:5caf:0:b0:625:b849:fa3 with SMTP id q15-20020ad45caf000000b00625b8490fa3mr41686qvh.30.1686000229031;
        Mon, 05 Jun 2023 14:23:49 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id g13-20020ad4514d000000b006260e7361ebsm4914612qvq.1.2023.06.05.14.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 14:23:48 -0700 (PDT)
Date: Mon, 5 Jun 2023 17:23:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Key updates for keys/1B93437D3B41629B.asc (Krzysztof Kozlowski)
Message-ID: <20230605-wrongness-take-3cdc0f@meerkat>
References: <9b532348-36a2-5508-d893-f729228e66d9@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9b532348-36a2-5508-d893-f729228e66d9@kernel.org>

On Sun, Jun 04, 2023 at 12:59:45PM +0200, Krzysztof Kozlowski wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
